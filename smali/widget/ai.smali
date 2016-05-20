.class final Lcom/ushaqi/zhuishushenqi/widget/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->mSlmReaderAppName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 59
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->mSlmReaderAppSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    add-float/2addr v0, v3

    .line 60
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v1

    .line 61
    :goto_0
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    if-eqz v0, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->setOrientation(I)V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->a(Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 65
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->mSlmReaderAppSize:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->mSlmReaderAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->mSlmReaderAppSize:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ai;->c:Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1030
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 72
    :goto_2
    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 60
    goto :goto_0

    :cond_2
    move v3, v2

    .line 61
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1030
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3
.end method
