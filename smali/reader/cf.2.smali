.class final Lcom/ushaqi/zhuishushenqi/reader/cf;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010010

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->a:I

    .line 157
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010011

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->b:I

    .line 158
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->c:Landroid/view/LayoutInflater;

    .line 159
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0c037d

    const/4 v7, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 165
    if-nez p2, :cond_4

    .line 166
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03010f

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 169
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v3

    .line 201
    :goto_1
    return-object v0

    .line 172
    :cond_0
    const v1, 0x7f0c037c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 173
    const v2, 0x7f0c02e5

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 175
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {v4, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;I)I

    move-result v4

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 180
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 181
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->b:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    :goto_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move-object v0, v3

    .line 201
    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v4

    .line 187
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)Ljava/util/LinkedList;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->d:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 192
    :goto_4
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cf;->a:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 190
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_4

    .line 198
    :cond_3
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move-object v3, p2

    goto/16 :goto_0
.end method
