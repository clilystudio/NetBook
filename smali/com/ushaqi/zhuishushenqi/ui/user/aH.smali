.class final Lcom/ushaqi/zhuishushenqi/ui/user/aH;
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
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
