.class final Lcom/ushaqi/zhuishushenqi/ui/post/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cy;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cy;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cy;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cy;->a:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cy;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    .line 503
    return-void
.end method
