.class final Lcom/ushaqi/zhuishushenqi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/a/a/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/MyApplication;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/MyApplication;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/f;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/f;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    const-string v1, "set_default_api"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/f;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    const-string v1, "reader_web_url"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j(Ljava/lang/String;I)V

    .line 211
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/H;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/f;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->x(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/H;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
