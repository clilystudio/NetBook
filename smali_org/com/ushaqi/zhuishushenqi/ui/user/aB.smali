.class final Lcom/ushaqi/zhuishushenqi/ui/user/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-string v1, "userInfo"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-string v1, "share_remove_entrance_click"

    const-string v2, "userInfo"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
