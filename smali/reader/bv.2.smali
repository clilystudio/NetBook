.class final Lcom/ushaqi/zhuishushenqi/reader/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/bt;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/bt;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->b:Lcom/ushaqi/zhuishushenqi/reader/bt;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->b:Lcom/ushaqi/zhuishushenqi/reader/bt;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->onAdClick(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->b:Lcom/ushaqi/zhuishushenqi/reader/bt;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bv;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->recordClick(Landroid/view/View;)V

    .line 186
    return-void
.end method
