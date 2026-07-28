# Merritt Atom Harvester

This microservice is part of the [Merritt Preservation System](https://github.com/CDLUC3/mrt-doc).

## Purpose

This standalone process builds collection-specific scripts that harvest Nuxeo Atom feeds for Merritt processing.

## Running in ECS

Run the following to ensure that you have up to date nuxeo config entries.

```bash
cd /mrt-atom
git fetch
git pull
aws s3 sync "s3://${S3CONFIG_BUCKET}/uc3/mrt/mrt-ingest-profiles/nuxeo/" bin
```

## Dependencies

This code depends on the following Merritt Ruby Gems
- [UC3 SSM](https://github.com/CDLUC3/uc3-ssm)
- [Merritt Ingest Client](https://rubygems.org/gems/mrt-ingest)

### Requirements
```
Ruby
Rake
```

## Internal Links
- https://github.com/CDLUC3/mrt-doc-private/blob/main/uc3-mrt-atom.md
- https://github.com/CDLib/mrt-dashboard-config

