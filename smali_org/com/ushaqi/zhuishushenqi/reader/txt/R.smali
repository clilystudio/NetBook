.class final Lcom/ushaqi/zhuishushenqi/reader/txt/R;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/txt/T;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    .line 180
    const v0, 0x7f0300e2

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 181
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    const v0, 0x7f02013c

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    const-string v0, "\u9009\u4e2d"

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const v0, 0x7f02013a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    const-string v0, "\u672a\u9009\u4e2d"

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/R;)V
    .locals 3

    .prologue
    .line 177
    .line 1219
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    .line 1220
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a(Z)V

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Z)Z

    .line 1223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    .line 1347
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 1223
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1224
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u5168\u9009"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 1222
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1224
    :cond_2
    const-string v1, "\u5168\u4e0d\u9009"

    goto :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/R;Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/R;)Ljava/util/List;
    .locals 4

    .prologue
    .line 177
    .line 2229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    .line 2231
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2232
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 177
    check-cast p2, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    .line 1193
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v1

    .line 1194
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->b()Z

    move-result v2

    .line 1195
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1196
    const/4 v0, 0x1

    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1197
    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(Landroid/widget/ImageView;Z)V

    .line 1198
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/S;

    invoke-direct {v2, p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/S;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/R;Lcom/ushaqi/zhuishushenqi/reader/txt/T;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 177
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0048
        0x7f0c00b0
        0x7f0c02f9
    .end array-data
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    .line 241
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->c()V

    .line 242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->notifyDataSetChanged()V

    .line 243
    return-void
.end method
