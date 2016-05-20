.class final Lcom/ushaqi/zhuishushenqi/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/co;->a:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 4

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/co;->a:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p2, v0, v2, v3}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "error!!"

    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
