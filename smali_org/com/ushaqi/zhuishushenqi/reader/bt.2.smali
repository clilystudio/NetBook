.class final Lcom/ushaqi/zhuishushenqi/reader/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->isApk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->onAdClick(Landroid/view/View;)V

    .line 195
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050103

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bt;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    .line 179
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 179
    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bv;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bv;-><init>(Lcom/ushaqi/zhuishushenqi/reader/bt;Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bu;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bu;-><init>(Lcom/ushaqi/zhuishushenqi/reader/bt;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0
.end method
