.class final Lcom/ushaqi/zhuishushenqi/ui/user/al;
.super Landroid/support/v7/widget/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/ah",
        "<",
        "Lcom/ushaqi/zhuishushenqi/ui/user/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/al;)Ljava/util/List;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .locals 5

    .prologue
    .line 150
    .line 2165
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/ao;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030102

    const/4 v4, 0x0

    .line 2166
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ao;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;Landroid/view/View;)V

    .line 150
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ay;I)V
    .locals 3

    .prologue
    .line 150
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;

    .line 1172
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->j:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->getCurrency()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8ffd\u4e66\u5e01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->j:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/am;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/user/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/al;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    .line 1192
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 1194
    :cond_0
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/al;->b()V

    .line 161
    return-void
.end method
