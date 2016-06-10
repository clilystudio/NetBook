.class final Lcom/ushaqi/zhuishushenqi/ui/post/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bn;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bn;->a:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    .line 455
    return-void
.end method
