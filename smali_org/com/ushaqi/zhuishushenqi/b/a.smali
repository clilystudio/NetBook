.class public final Lcom/ushaqi/zhuishushenqi/b/a;
.super Lcom/ushaqi/zhuishushenqi/b/b;
.source "SourceFile"


# instance fields
.field private b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/b/b;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/b/a;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    .line 24
    return-void
.end method


# virtual methods
.method final a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/b/a;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    :try_end_0
    .catch Lcom/ushaqi/zhuishushenqi/exception/UnImplementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;->printStackTrace()V

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/b/b;->onClick(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/b/a;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getType()Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1866
    const-string v2, "post_official_link_click"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
