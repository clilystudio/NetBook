.class final Lcom/ushaqi/zhuishushenqi/ui/user/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 222
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/p;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 225
    if-eqz p2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/p;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 228
    :cond_0
    return-void
.end method
