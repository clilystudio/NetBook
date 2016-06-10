.class final Lcom/ushaqi/zhuishushenqi/ui/user/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/k;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/k;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/k;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/k;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)V

    .line 158
    return-void
.end method
