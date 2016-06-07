.class final Lcom/ushaqi/zhuishushenqi/ui/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)V

    .line 656
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aH;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 657
    return-void
.end method
