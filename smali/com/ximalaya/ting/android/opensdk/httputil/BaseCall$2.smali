.class Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/i;


# instance fields
.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/C;Ljava/io/IOException;)V
    .locals 3

    .prologue
    const/16 v2, 0x25c

    .line 92
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const-string v1, "http error"

    invoke-interface {v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onResponse(Lcom/squareup/okhttp/I;)V

    .line 87
    return-void
.end method
