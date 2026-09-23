# Docker-based Python stack

[![Build Status](https://github.com/wodby/docker4python/workflows/Run%20tests/badge.svg)](https://github.com/wodby/docker4python/actions)

## Introduction

Docker4Python is a set of docker images optimized for Python applications (suitable for Django). Use
`compose.yml` file from the [latest stable release](https://github.com/wodby/docker4python/releases) to spin up local environment on Linux, Mac OS X and Windows.

- Read the docs on [**how to use**](https://wodby.com/docs/stacks/python/local#usage)
- Ask questions on [Discord](http://discord.wodby.com/)
- Ask questions on [Slack](http://slack.wodby.com/)
- Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements

## Stack

The Python stack consists of the following containers:

| Container             | Versions                     | Image                                     | ARM64 support | Enabled by default |
|-----------------------|------------------------------|-------------------------------------------|---------------|--------------------|
| [Nginx]               | 1.31, 1.30                   | [wodby/nginx]                             | ✓             | ✓                  |
| [Python]              | 3.14, 3.13, 3.12, 3.11, 3.10 | [wodby/python]                            | ✓             | ✓                  |
| [PostgreSQL]          | 18, 17, 16, 15, 14           | [wodby/postgres]                          | ✓             | ✓                  |
| [Valkey]              | 9.0, 8.1, 8.0, 7             | [wodby/valkey]                            | ✓             | ✓                  |
| [Redis]               | 8.6, 8.4, 8.2, 7.4           | [wodby/redis]                             | ✓             |                    |
| [MariaDB]             | 11.8, 11.4, 10.11, 10.6      | [wodby/mariadb]                           | ✓             |                    |
| [Node.js]             | 26, 24, 22                   | [wodby/node]                              | ✓             |                    |
| Vinyl ([Varnish])     | 8.0, 6.0                     | [wodby/vinyl]                             | ✓             |                    |
| [Solr]                | 10, 9                        | [wodby/solr]                              | ✓             |                    |
| OpenSearch            | 2                            | [opensearchproject/opensearch]            | ✓             |                    |
| OpenSearch Dashboards | 2                            | [opensearchproject/opensearch-dashboards] | ✓             |                    |
| [Memcached]           | 1.6                          | [wodby/memcached]                         | ✓             |                    |
| [Rsyslog]             | latest                       | [wodby/rsyslog]                           | ✓             |                    |
| Gotenberg             | latest                       | [gotenberg/gotenberg]                     | ✓             | ✓                  |
| Mailpit               | latest                       | [axllent/mailpit]                         | ✓             | ✓                  |
| [OpenSMTPD]           | 7                            | [wodby/opensmtpd]                         | ✓             |                    |
| Adminer               | 6                            | [wodby/adminer]                           | ✓             |                    |
| Traefik               | 3                            | [_/traefik]                               | ✓             | ✓                  |

## Documentation

Full documentation is available at https://wodby.com/docs/stacks/python/local

## Image tags

Wodby images that package upstream software use `[VERSION]-r[N]` tags, for example
`wodby/mariadb:11.4-r0`. `11.4` selects the MariaDB version line and `r0` identifies
the Wodby image revision. Revisions include application updates and image changes;
review the image release notes before upgrading because the revision number does
not indicate compatibility.

Major/minor tags share a revision counter per image repository. Full-version tags,
such as `11.4.2-r0`, start at `r0` again for each exact upstream version. Matching
Git tags identify the source commit for each published revision. Development
variants retain their qualifier, for example `8.5-dev-r0`.

Use the versioned image tags supplied in `.env` instead of floating tags such as
`latest`. Previously published tags remain available. Wodby software such as Backup
uses semantic product versions, and third-party images follow their own tag formats.
See the [image revision policy](https://github.com/wodby/images#image-revisions)
for details.

Test fixtures use `*_IMAGE_REVISION` environment variables for the image release
suffix.

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4python/releases) for full changelog and update instructions. Most of routine updates for images and this project performed by [the bot](https://github.com/wodbot) via scripts located at [wodby/images](https://github.com/wodby/images).

## Other Docker4x projects

* [docker4php](https://github.com/wodby/docker4php)
* [docker4drupal](https://github.com/wodby/docker4drupal)
* [docker4wordpress](https://github.com/wodby/docker4wordpress)
* [docker4ruby](https://github.com/wodby/docker4ruby)

## License

This project is licensed under the MIT open source license.

[MariaDB]: https://wodby.com/docs/stacks/python/containers#mariadb

[Memcached]: https://wodby.com/docs/stacks/python/containers#memcached

[Nginx]: https://wodby.com/docs/stacks/python/containers#nginx

[Node.js]: https://wodby.com/docs/stacks/python/containers#node

[OpenSMTPD]: https://wodby.com/docs/stacks/python/containers#opensmtpd

[PostgreSQL]: https://wodby.com/docs/stacks/python/containers#postgres

[Valkey]: https://wodby.com/docs/stacks/python/containers#valkey

[Redis]: https://wodby.com/docs/stacks/python/containers#redis

[Rsyslog]: https://wodby.com/docs/stacks/python/containers#rsyslog

[Python]: https://wodby.com/docs/stacks/python/containers#python

[Solr]: https://wodby.com/docs/stacks/solr

[Varnish]: https://wodby.com/docs/stacks/python/containers#varnish

[_/traefik]: https://hub.docker.com/_/traefik

[gotenberg/gotenberg]: https://hub.docker.com/r/gotenberg/gotenberg

[blackfire/blackfire]: https://hub.docker.com/r/blackfire/blackfire

[axllent/mailpit]: https://hub.docker.com/r/axllent/mailpit

[wodby/adminer]: https://hub.docker.com/r/wodby/adminer

[wodby/mariadb]: https://github.com/wodby/mariadb

[wodby/memcached]: https://github.com/wodby/memcached

[wodby/nginx]: https://github.com/wodby/nginx

[wodby/node]: https://github.com/wodby/node

[wodby/opensmtpd]: https://github.com/wodby/opensmtpd

[wodby/postgres]: https://github.com/wodby/postgres

[wodby/valkey]: https://github.com/wodby/valkey

[wodby/redis]: https://github.com/wodby/redis

[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog

[wodby/python]: https://github.com/wodby/python

[wodby/solr]: https://github.com/wodby/solr

[wodby/vinyl]: https://github.com/wodby/vinyl

[opensearchproject/opensearch]: https://hub.docker.com/r/opensearchproject/opensearch

[opensearchproject/opensearch-dashboards]: https://hub.docker.com/r/opensearchproject/opensearch-dashboards
