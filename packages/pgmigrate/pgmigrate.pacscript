name="pgmigrate"
repology=("project: ${name}")
breaks="${name}-git"
replace="${name}"
version="1.0.7"
url="https://github.com/yandex/${name}/archive/refs/tags/${version}.tar.gz"
depends="python3 python3-sqlparse python3-yaml python3-psycopg2"
build_depends="python3-setuptools"
description="Simple tool to evolve PostgreSQL schema easily"
hash="ba39ee6198b1132a5306c3cce79d16644c507d7be999fbcc9c039cd3307693f6"
maintainer="WRM-42 <y8bsbahy@anonaddy.me>"

prepare() {
  true
}

build() {
  python3 setup.py build
}

install() {
  sudo python3 setup.py install --root="${STOWDIR}/${name}" --optimize=1
}
