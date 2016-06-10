.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const-string v1, "ugc_create"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    .line 275
    :cond_0
    return-void
.end method
