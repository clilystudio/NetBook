.class final Lcom/ushaqi/zhuishushenqi/ui/post/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/F;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const v5, 0x7f05013e

    invoke-direct {v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/F;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;Landroid/app/Activity;I)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    .line 139
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/E;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/F;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method
