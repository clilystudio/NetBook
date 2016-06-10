.class final Lcom/ushaqi/zhuishushenqi/ui/post/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/TextView;

.field private synthetic c:I

.field private synthetic d:Landroid/app/Dialog;

.field private synthetic e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->b:Landroid/widget/TextView;

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->c:I

    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-string v1, "\u8be5\u6295\u7968\u9879\u5df2\u7ecf\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 433
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->e:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/V;->c:I

    aput-object v0, v1, v2

    goto :goto_0
.end method
