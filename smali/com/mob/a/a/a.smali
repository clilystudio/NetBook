.class public abstract Lcom/mob/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/log/a;


# instance fields
.field private a:Lcom/mob/a/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mob/a/a/d;->a(Landroid/content/Context;)Lcom/mob/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    iget-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {v0}, Lcom/mob/a/a/d;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.sharesdk.log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    iget-object v2, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {v2}, Lcom/mob/a/a/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "priority"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {v1}, Lcom/mob/a/a/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract getAppkey()Ljava/lang/String;
.end method

.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method protected abstract getSDKVersion()I
.end method

.method public final log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p2, p5}, Lcom/mob/a/a/a;->a(ILjava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getAppkey()Ljava/lang/String;

    move-result-object v4

    move v2, p3

    move-object v3, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/a/a/d;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getAppkey()Ljava/lang/String;

    move-result-object v4

    move v2, p3

    move-object v3, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/a/a/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mob/a/a/a;->a:Lcom/mob/a/a/d;

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getSDKVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/a/a/a;->getAppkey()Ljava/lang/String;

    move-result-object v4

    move v2, p3

    move-object v3, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/a/a/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
