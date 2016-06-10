.class final Lcom/ushaqi/zhuishushenqi/reader/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:I

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->a:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->b:I

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->b:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;I)I

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    const-string v1, "reader_screen_off_time"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)[I

    move-result-object v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bP;->b:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 224
    :cond_0
    return-void
.end method
