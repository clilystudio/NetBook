.class final Lcom/ushaqi/zhuishushenqi/ui/feed/c;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    .line 123
    const v0, 0x7f0300ea

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 124
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 120
    check-cast p2, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1136
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1137
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1138
    const/4 v0, 0x2

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1139
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1141
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move v2, v3

    .line 1142
    :goto_0
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1143
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1144
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1142
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 120
    :cond_1
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0310
        0x7f0c0311
        0x7f0c0312
    .end array-data
.end method
