.class public Lcom/koushikdutta/async/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/koushikdutta/async/Y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/Y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/koushikdutta/async/A;[BLcom/koushikdutta/async/a/a;)V
    .locals 2

    .prologue
    .line 202
    array-length v0, p1

    invoke-static {v0}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 205
    new-instance v1, Lcom/koushikdutta/async/v;

    invoke-direct {v1}, Lcom/koushikdutta/async/v;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 1189
    new-instance v0, Lcom/koushikdutta/async/ab;

    invoke-direct {v0, p0, v1, p2}, Lcom/koushikdutta/async/ab;-><init>(Lcom/koushikdutta/async/A;Lcom/koushikdutta/async/v;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p0, v0}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 1199
    invoke-interface {v0}, Lcom/koushikdutta/async/a/d;->a()V

    .line 208
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 4

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/y;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/koushikdutta/async/y;->d()Lcom/koushikdutta/async/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    if-lez v1, :cond_2

    .line 20
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/a/b;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/y;->d()Lcom/koushikdutta/async/a/b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/y;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/koushikdutta/async/Y;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/koushikdutta/async/y;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emitter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-boolean v0, Lcom/koushikdutta/async/Y;->a:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all data was consumed by Util.emitAllData"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_4
    return-void
.end method

.method public static a(Ljava/io/InputStream;JLcom/koushikdutta/async/A;Lcom/koushikdutta/async/a/a;)V
    .locals 7

    .prologue
    .line 54
    new-instance v6, Lcom/koushikdutta/async/Z;

    invoke-direct {v6, p4}, Lcom/koushikdutta/async/Z;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 65
    new-instance v1, Lcom/koushikdutta/async/aa;

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/aa;-><init>(Lcom/koushikdutta/async/A;Ljava/io/InputStream;JLcom/koushikdutta/async/a/a;)V

    .line 114
    invoke-interface {p3, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 116
    invoke-interface {p3, v6}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/a;)V

    .line 118
    invoke-interface {v1}, Lcom/koushikdutta/async/a/d;->a()V

    .line 119
    return-void
.end method
