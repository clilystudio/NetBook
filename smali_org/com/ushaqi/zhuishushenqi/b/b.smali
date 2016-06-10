.class public abstract Lcom/ushaqi/zhuishushenqi/b/b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/b/b;->a:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->b:I

    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->d:I

    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method abstract a()Landroid/content/Intent;
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/b/b;->e:Z

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/b/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 39
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->b:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 40
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->d:I

    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 42
    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/b/b;->c:I

    goto :goto_0
.end method
