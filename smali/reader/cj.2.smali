.class final Lcom/ushaqi/zhuishushenqi/reader/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->a:I

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;IZ)V

    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)I

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->c()V

    .line 177
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V

    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cj;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)I

    goto :goto_0
.end method
