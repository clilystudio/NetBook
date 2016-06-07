.class public Lcom/ushaqi/zhuishushenqi/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->a:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    .line 24
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/be;->a()V

    .line 25
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/bf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/bf;

    .line 60
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/b/c;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/ushaqi/zhuishushenqi/b/c;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/ui/bf;)V

    .line 61
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bf;->a()I

    move-result v4

    .line 62
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bf;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x12

    .line 60
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .prologue
    const/16 v4, 0x300a

    const/4 v1, 0x0

    .line 28
    .line 1033
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1037
    :goto_0
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 1038
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    invoke-virtual {v6, v0}, Landroid/text/SpannableString;->charAt(I)C

    move-result v6

    .line 1039
    if-nez v3, :cond_1

    .line 1040
    if-ne v6, v4, :cond_0

    move v2, v0

    move v3, v4

    .line 1053
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1054
    goto :goto_0

    .line 1045
    :cond_1
    const/16 v7, 0x300b

    if-ne v6, v7, :cond_0

    .line 1046
    sub-int v3, v0, v2

    const/16 v6, 0x14

    if-ge v3, v6, :cond_2

    .line 1047
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/bf;

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    invoke-virtual {v6}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v6, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/bf;-><init>(Lcom/ushaqi/zhuishushenqi/ui/be;Ljava/lang/String;II)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v1

    move v3, v1

    .line 1050
    goto :goto_1

    .line 29
    :cond_3
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/be;->a(Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public final b()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/be;->b:Landroid/text/SpannableString;

    return-object v0
.end method
