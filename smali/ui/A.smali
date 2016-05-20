.class final Lcom/ushaqi/zhuishushenqi/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/A;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 156
    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/B;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/A;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    return-void
.end method
