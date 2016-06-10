.class final Lcom/ushaqi/zhuishushenqi/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->c:Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cn;->b:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/l;->b(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p2, v0, v2, v3}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "error!!"

    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
