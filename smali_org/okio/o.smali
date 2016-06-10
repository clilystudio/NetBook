.class public final Lokio/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lokio/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/o;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lokio/o;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static a(Lokio/x;)Lokio/h;
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lokio/s;

    invoke-direct {v0, p0}, Lokio/s;-><init>(Lokio/x;)V

    return-object v0
.end method

.method public static a(Lokio/y;)Lokio/i;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lokio/t;

    invoke-direct {v0, p0}, Lokio/t;-><init>(Lokio/y;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lokio/x;
    .locals 3

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lokio/o;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1068
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_2
    new-instance v2, Lokio/p;

    invoke-direct {v2, v0, v1}, Lokio/p;-><init>(Lokio/z;Ljava/io/OutputStream;)V

    .line 1150
    new-instance v1, Lokio/b;

    invoke-direct {v1, v0, v2}, Lokio/b;-><init>(Lokio/a;Lokio/x;)V

    .line 118
    return-object v1
.end method

.method public static a(Ljava/io/File;)Lokio/y;
    .locals 2

    .prologue
    .line 160
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2123
    new-instance v1, Lokio/z;

    invoke-direct {v1}, Lokio/z;-><init>()V

    invoke-static {v0, v1}, Lokio/o;->a(Ljava/io/InputStream;Lokio/z;)Lokio/y;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lokio/z;)Lokio/y;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lokio/q;

    invoke-direct {v0, p1, p0}, Lokio/q;-><init>(Lokio/z;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Lokio/y;
    .locals 3

    .prologue
    .line 196
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {p0}, Lokio/o;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lokio/o;->a(Ljava/io/InputStream;Lokio/z;)Lokio/y;

    move-result-object v1

    .line 2206
    new-instance v2, Lokio/c;

    invoke-direct {v2, v0, v1}, Lokio/c;-><init>(Lokio/a;Lokio/y;)V

    .line 199
    return-object v2
.end method

.method private static c(Ljava/net/Socket;)Lokio/a;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lokio/r;

    invoke-direct {v0, p0}, Lokio/r;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
