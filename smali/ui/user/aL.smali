.class final Lcom/ushaqi/zhuishushenqi/ui/user/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->finish()V

    .line 62
    return-void
.end method
