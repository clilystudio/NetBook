.class public final Lcom/ushaqi/zhuishushenqi/adapter/D;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f030105

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    .line 1039
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1040
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1041
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1042
    const/4 v0, 0x5

    const-string v1, "%d \u4eba\u63a8\u8350"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getYes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1044
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1045
    if-nez v0, :cond_0

    .line 1046
    const-string v0, ""

    .line 1049
    :cond_0
    const-string v1, "xhqh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    const-string v0, "\u7384\u5e7b\u5947\u5e7b"

    .line 1076
    :goto_0
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1078
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getState()Ljava/lang/String;

    move-result-object v1

    .line 1079
    const/4 v0, 0x6

    const-class v2, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    .line 1080
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1081
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 1082
    invoke-virtual {p0, v6, v5}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(IZ)Landroid/view/View;

    :goto_1
    return-void

    .line 1051
    :cond_1
    const-string v1, "wxxx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    const-string v0, "\u6b66\u4fa0\u4ed9\u4fa0"

    goto :goto_0

    .line 1053
    :cond_2
    const-string v1, "dsyn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    const-string v0, "\u90fd\u5e02\u5f02\u80fd"

    goto :goto_0

    .line 1055
    :cond_3
    const-string v1, "lsjs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    const-string v0, "\u5386\u53f2\u519b\u4e8b"

    goto :goto_0

    .line 1057
    :cond_4
    const-string v1, "yxjj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1058
    const-string v0, "\u6e38\u620f\u7ade\u6280"

    goto :goto_0

    .line 1059
    :cond_5
    const-string v1, "khly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    const-string v0, "\u79d1\u5e7b\u7075\u5f02"

    goto :goto_0

    .line 1061
    :cond_6
    const-string v1, "cyjk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    const-string v0, "\u7a7f\u8d8a\u67b6\u7a7a"

    goto :goto_0

    .line 1063
    :cond_7
    const-string v1, "hmzc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    const-string v0, "\u8c6a\u95e8\u603b\u88c1"

    goto :goto_0

    .line 1065
    :cond_8
    const-string v1, "xdyq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1066
    const-string v0, "\u73b0\u4ee3\u8a00\u60c5"

    goto/16 :goto_0

    .line 1067
    :cond_9
    const-string v1, "gdyq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    const-string v0, "\u53e4\u4ee3\u8a00\u60c5"

    goto/16 :goto_0

    .line 1069
    :cond_a
    const-string v1, "hxyq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    const-string v0, "\u5e7b\u60f3\u8a00\u60c5"

    goto/16 :goto_0

    .line 1071
    :cond_b
    const-string v1, "dmtr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1072
    const-string v0, "\u803d\u7f8e\u540c\u4eba"

    goto/16 :goto_0

    .line 1074
    :cond_c
    const-string v0, "\u5176\u4ed6"

    goto/16 :goto_0

    .line 1084
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 1085
    invoke-virtual {p0, v6, v4}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(IZ)Landroid/view/View;

    .line 1086
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    goto/16 :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0370
        0x7f0c0371
        0x7f0c0372
        0x7f0c0373
        0x7f0c0374
        0x7f0c0375
        0x7f0c0300
    .end array-data
.end method
