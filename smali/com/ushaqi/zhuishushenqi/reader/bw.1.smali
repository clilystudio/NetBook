.class final Lcom/ushaqi/zhuishushenqi/reader/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

.field final synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bw;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bw;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/bw;->b:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bw;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u66f4\u6362\u6765\u6e90\u5c06\u4f1a\u5220\u9664\u4e4b\u524d\u7684\u9884\u8bfb\u7ae0\u8282\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    .line 1046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 410
    const-string v1, "\u66f4\u6362"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bx;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bx;-><init>(Lcom/ushaqi/zhuishushenqi/reader/bw;)V

    .line 411
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 420
    return-void
.end method
