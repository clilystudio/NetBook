.class final Lcom/ushaqi/zhuishushenqi/ui/user/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/m;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 179
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/q;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/m;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/m;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const v3, 0x7f05006a

    invoke-direct {v1, v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/Activity;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/m;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "male"

    :goto_0
    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/q;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void

    .line 179
    :cond_0
    const-string v0, "female"

    goto :goto_0
.end method
