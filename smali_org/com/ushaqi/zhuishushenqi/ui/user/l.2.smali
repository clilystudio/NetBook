.class final Lcom/ushaqi/zhuishushenqi/ui/user/l;
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
    .line 160
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/l;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/l;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/l;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/l;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)V

    .line 165
    return-void
.end method
