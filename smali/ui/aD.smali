.class final Lcom/ushaqi/zhuishushenqi/ui/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/aC;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/aC;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/aC;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/aC;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)Z

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/aC;->a:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 343
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aD;->a:Lcom/ushaqi/zhuishushenqi/ui/aC;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/aC;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)Z

    goto :goto_0
.end method
