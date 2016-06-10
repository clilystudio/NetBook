.class final Lcom/ushaqi/zhuishushenqi/ui/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->a:Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Z)Z

    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a()V

    .line 270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->a:Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->getSplashRecord()Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->insideLink:Ljava/lang/String;

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-direct {v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->finish()V
    :try_end_0
    .catch Lcom/ushaqi/zhuishushenqi/exception/UnImplementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    return-void

    :catch_0
    move-exception v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->c:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
