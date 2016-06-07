.class final Lcom/ushaqi/zhuishushenqi/util/adutil/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->c:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->c:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->onAdClick(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->c:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/j;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->recordDownload(Landroid/content/Context;)V

    .line 36
    return-void
.end method
