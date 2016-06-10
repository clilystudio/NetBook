.class final Lcom/ushaqi/zhuishushenqi/reader/cC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cC;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cC;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cC;->a:Landroid/view/View;

    const v1, 0x7f0c0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 353
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cC;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cC;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    goto :goto_0
.end method
