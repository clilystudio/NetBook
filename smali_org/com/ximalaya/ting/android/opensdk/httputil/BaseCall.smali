.class public Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mOkHttpClient:Lcom/squareup/okhttp/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/squareup/okhttp/A;

    invoke-direct {v0}, Lcom/squareup/okhttp/A;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->mOkHttpClient:Lcom/squareup/okhttp/A;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/A;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/f;

    move-result-object v0

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$1;

    invoke-direct {v1, p2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$1;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/i;)V

    .line 77
    return-void
.end method

.method public static doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->getOkHttpClient()Lcom/squareup/okhttp/A;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/A;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/f;

    move-result-object v0

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/i;)V

    .line 102
    return-void
.end method

.method public static doSync(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/A;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    return-object v0
.end method

.method public static doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->getOkHttpClient()Lcom/squareup/okhttp/A;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/A;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    return-object v0
.end method

.method public static getOkHttpClient()Lcom/squareup/okhttp/A;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->mOkHttpClient:Lcom/squareup/okhttp/A;

    return-object v0
.end method
