#!/usr/bin/env sh
set -e
MIRROR=http://download.sonatype.com/nexus

dl() {
    local major_ver=$1
    local fq_ver=$2
    local os=$3
    local archive_type=$4
    local sha_type=${5:-sha256}
    local url=$MIRROR/${major_ver}/nexus-${fq_ver}-${os}.${archive_type}.${sha_type}

    printf "    # %s\n" $url
    printf "    %s: %s:%s\n" $os $sha_type $(curl -sSLf $url)
}

dl_ver()
{
    local major_ver=$1
    local minor_ver=$2
    local patch_ver=$3
    local fq_ver="${major_ver}.${minor_ver}.${patch_ver}"

    printf "  '%s':\n" $fq_ver
    dl $major_ver $fq_ver unix tar.gz
    dl $major_ver $fq_ver mac tgz
    dl $major_ver $fq_ver win64 zip
}

# https://github.com/sonatype/nexus-public/releases
dl_ver 3 70 1-02
