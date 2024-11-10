@echo off
set GOPATH=%~dp0
cd %~dp0
go fmt ./...
set version=0.13.0

echo.
echo 开始编译Windows 32位系统的程序
set GOOS=windows
set GOARCH=386
echo.
echo 开始编译服务端...
go build -o bin/%GOOS%/%version%/frps.exe ./cmd/frps
echo 编译完成
echo.
echo 开始编译客户端...
go build -o bin/%GOOS%/%version%/frpc.exe ./cmd/frpc/main.go
echo 编译完成
echo.

@REM echo 开始编译Linux 32位系统的程序
@REM set GOOS=linux
@REM set GOARCH=386
@REM echo.
@REM echo 开始编译服务端...
@REM go build -o bin/%GOOS%/%version%/frps ./cmd/frps/main.go
@REM echo 编译完成
@REM echo.
@REM echo 开始编译客户端...
@REM go build -o bin/%GOOS%/%version%/frpc ./cmd/frpc/main.go
@REM echo 编译完成
@REM echo.

@REM echo 开始编译Linux arm系统的程序
@REM set GOOS=linux
@REM set GOARCH=arm
@REM echo.
@REM echo 开始编译服务端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frps ./cmd/frps/main.go
@REM echo 编译完成
@REM echo.
@REM echo 开始编译客户端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frpc ./cmd/frpc/main.go
@REM echo 编译完成
@REM echo.

@REM echo 开始编译Linux mips系统的程序
@REM set GOOS=linux
@REM set GOARCH=mips
@REM echo.
@REM echo 开始编译服务端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frps ./cmd/frps/main.go
@REM echo 编译完成
@REM echo.
@REM echo 开始编译客户端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frpc ./cmd/frpc/main.go
@REM echo 编译完成
@REM echo.

@REM echo 开始编译Linux mipsle系统的程序
@REM set GOOS=linux
@REM set GOARCH=mipsle
@REM echo.
@REM echo 开始编译服务端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frps ./cmd/frps/main.go
@REM echo 编译完成
@REM echo.
@REM echo 开始编译客户端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frpc ./cmd/frpc/main.go
@REM echo 编译完成
@REM echo.

@REM echo 开始编译MAC 32位系统的程序
@REM set GOOS=darwin
@REM set GOARCH=386
@REM echo.
@REM echo 开始编译服务端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frps ./cmd/frps/main.go
@REM echo 编译完成
@REM echo.
@REM echo 开始编译客户端...
@REM go build -o bin/%GOOS%-%GOARCH%/%version%/frpc ./cmd/frpc/main.go
@REM echo 编译完成
@REM echo.
echo 按任意退出
pause>nul