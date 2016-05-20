.class final Lcom/ushaqi/zhuishushenqi/reader/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->a:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    .line 146
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->a:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->a:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->a:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/j;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bF;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-direct {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/j;->a()V

    .line 154
    :cond_0
    return-void
.end method
