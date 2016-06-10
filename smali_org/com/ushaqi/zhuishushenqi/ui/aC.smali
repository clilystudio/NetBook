.class final Lcom/ushaqi/zhuishushenqi/ui/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aC;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 333
    if-le v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aD;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/aD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/aC;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :cond_0
    return-void
.end method
