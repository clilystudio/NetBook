.class public Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;
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

.method public static addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;
    .locals 2

    .prologue
    .line 31
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 32
    return-object p0
.end method

.method public static urlGet(Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlGet(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/D;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string v1, "q"

    .line 55
    invoke-static {p1, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/Util;->encoderName(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/Util;->ConvertMap2HttpParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/D;

    invoke-direct {v0}, Lcom/squareup/okhttp/D;-><init>()V

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/okhttp/D;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p2, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/SignatureUtil;->generateSignature(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x259

    .line 78
    const-string v2, "exception occurs when caculate signature"

    .line 77
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string v1, "sig"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlPost(Ljava/lang/String;Ljava/io/File;)Lcom/squareup/okhttp/D;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/squareup/okhttp/D;

    invoke-direct {v0}, Lcom/squareup/okhttp/D;-><init>()V

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/squareup/okhttp/E;->a(Lcom/squareup/okhttp/z;Ljava/io/File;)Lcom/squareup/okhttp/E;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlPost(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lcom/squareup/okhttp/D;

    invoke-direct {v0}, Lcom/squareup/okhttp/D;-><init>()V

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1047
    sget-object v1, Lcom/squareup/okhttp/internal/l;->c:Ljava/nio/charset/Charset;

    .line 1055
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1056
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/squareup/okhttp/E;->a(Lcom/squareup/okhttp/z;[B)Lcom/squareup/okhttp/E;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlPost(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/D;"
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    new-instance v2, Lcom/squareup/okhttp/s;

    invoke-direct {v2}, Lcom/squareup/okhttp/s;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/squareup/okhttp/D;

    invoke-direct {v0}, Lcom/squareup/okhttp/D;-><init>()V

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 133
    invoke-virtual {v2}, Lcom/squareup/okhttp/s;->a()Lcom/squareup/okhttp/E;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/s;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25a

    .line 130
    const-string v2, "Form encoded body must have at least one part"

    .line 129
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static urlPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/okhttp/D;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p2, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/SignatureUtil;->generateSignature(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x259

    .line 101
    const-string v2, "exception occurs when caculate signature"

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const-string v1, "sig"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public static urlPost(Ljava/lang/String;[B)Lcom/squareup/okhttp/D;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/squareup/okhttp/D;

    invoke-direct {v0}, Lcom/squareup/okhttp/D;-><init>()V

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/squareup/okhttp/E;->a(Lcom/squareup/okhttp/z;[B)Lcom/squareup/okhttp/E;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->addCommonCookie(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method
