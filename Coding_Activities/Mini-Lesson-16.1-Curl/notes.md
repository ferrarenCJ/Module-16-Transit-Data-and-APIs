# Mini-Lesson 16.1: Curl

## Overview

`curl` is a command-line tool used to transfer data to and from a server. It supports multiple protocols, including:

- HTTP
- HTTPS
- FTP
- SFTP
- SCP

Common uses include:

- Downloading files
- Testing APIs
- Retrieving web content
- Resuming interrupted downloads
- Automating data transfers

---

## Basic Syntax

```bash
curl [options] [URL]
```

Example:

```bash
curl example.com
```

This displays the contents of the specified URL in the terminal.

---

## Installing Curl in Docker

Create an Ubuntu container and install curl:

```bash
docker run --name curl_container -t -i ubuntu /bin/bash

apt update

apt install curl
```

---

## Saving Output to a File

### Using `-o`

Save output with a custom filename:

```bash
curl -o example.txt example.com
```

Verify the file:

```bash
ls

cat example.txt
```

---

### Using `-O`

Save output using the original filename:

```bash
curl -O https://cdn.jsdelivr.net/npm/vue/dist/vue.js
```

---

## Downloading Multiple Files

Use multiple `-O` options:

```bash
curl \
-O http://mirrors.edge.kernel.org/archlinux/iso/2018.06.01/archlinux-2018.06.01-x86_64.iso \
-O https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.4.0-amd64-netinst.iso
```

This downloads both files simultaneously.

---

## Resuming a Download

If a download is interrupted, use `-C -` to continue where it stopped:

```bash
curl -C - -O \
http://releases.ubuntu.com/18.04/ubuntu-18.04-live-server-amd64.iso
```

Benefits:

- Saves time
- Prevents restarting large downloads
- Useful for unstable connections

---

## Using Curl with APIs

Curl is commonly used to test APIs.

Example:

```bash
curl https://api-v3.mbta.com/vehicles
```

The command returns JSON data from the MBTA API.

Typical API workflow:

```text
curl Request
      ↓
API Endpoint
      ↓
JSON Response
      ↓
Application Processing
```

---

## Key Curl Options

| Option | Description |
|----------|-------------|
| `-o` | Save output using a custom filename |
| `-O` | Save output using the original filename |
| `-C -` | Resume a download |
| `-I` | Retrieve HTTP headers only |
| `-X` | Specify HTTP method |
| `-H` | Add request headers |

Examples:

```bash
curl -I https://example.com
```

```bash
curl -X GET https://api.example.com
```

```bash
curl -H "Content-Type: application/json" https://api.example.com
```

---

## Relevance to Project 16.1

Curl can be used to:

- Test MBTA API endpoints
- Validate API responses
- Inspect JSON data
- Troubleshoot connectivity issues
- Verify route and vehicle information before writing application code

Example:

```bash
curl https://api-v3.mbta.com/vehicles?filter[route]=1
```

This retrieves vehicle information for MBTA Route 1.

---

## Key Takeaways

- Curl is a versatile command-line tool for transferring data.
- It is commonly used for API testing and file downloads.
- The `-o` and `-O` options save output to files.
- The `-C -` option resumes interrupted downloads.
- Curl is useful for inspecting MBTA API responses before integrating them into a Python application.
- Understanding curl makes troubleshooting APIs significantly easier during development.

---

## References

Linuxize. (2019). *Curl command in Linux with examples*.  
https://linuxize.com/post/curl-command-examples/

Curl Project. *Curl Homepage*.  
https://curl.se/