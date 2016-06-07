.class public Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mResponse:Lcom/squareup/okhttp/I;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/I;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    .line 28
    return-void
.end method


# virtual methods
.method public filterResponse()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/I;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyReaderToObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->e()Ljava/io/Reader;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyStringToObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyToReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->e()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->c()I

    move-result v0

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->mResponse:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
