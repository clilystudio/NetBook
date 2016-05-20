.class public final Lcom/ushaqi/zhuishushenqi/adapter/h;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookReview;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f0300e5

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/h;->b:Z

    .line 35
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/h;->a:Z

    .line 37
    const-string v1, "community_user_gender_icon_toggle"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/h;->b:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 28
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;

    .line 1056
    iget-object v2, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 1057
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/h;->a:Z

    if-eqz v0, :cond_0

    .line 1058
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 1068
    :goto_0
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lv."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1070
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1071
    const/4 v1, 0x4

    const-class v3, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {p0, v1, v3}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    .line 1072
    iget-object v3, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->state:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 1080
    :goto_1
    const/4 v0, 0x5

    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1081
    const/4 v0, 0x6

    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->content:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1082
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->helpful:Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getYes()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1084
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1085
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/h;->b:Z

    if-eqz v1, :cond_4

    .line 1086
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 1087
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1112
    :goto_2
    const/16 v0, 0x9

    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    .line 1113
    iget v1, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->rating:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 28
    return-void

    .line 1060
    :cond_0
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f02006e

    invoke-virtual {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1061
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/i;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/i;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/h;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1076
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v3, p2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->created:Ljava/util/Date;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    goto/16 :goto_1

    .line 1090
    :cond_2
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1091
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1094
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1099
    :cond_4
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1101
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1102
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1103
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1104
    :cond_5
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1105
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1106
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1108
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c0023
        0x7f0c02fe
        0x7f0c02ff
        0x7f0c0047
        0x7f0c0300
        0x7f0c0048
        0x7f0c0029
        0x7f0c0302
        0x7f0c02fd
        0x7f0c0301
    .end array-data
.end method
