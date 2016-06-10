.class public abstract Lcom/squareup/okhttp/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/z;Ljava/io/File;)Lcom/squareup/okhttp/E;
    .locals 2

    .prologue
    .line 103
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/squareup/okhttp/H;-><init>(Lcom/squareup/okhttp/z;Ljava/io/File;)V

    return-object v0
.end method

.method public static a(Lcom/squareup/okhttp/z;[B)Lcom/squareup/okhttp/E;
    .locals 7

    .prologue
    .line 78
    array-length v6, p1

    .line 1084
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    int-to-long v4, v6

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/l;->a(JJJ)V

    .line 1086
    new-instance v0, Lcom/squareup/okhttp/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, p1, v1}, Lcom/squareup/okhttp/G;-><init>(Lcom/squareup/okhttp/z;I[BI)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/squareup/okhttp/z;
.end method

.method public abstract a(Lokio/h;)V
.end method

.method public b()J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    return-wide v0
.end method
