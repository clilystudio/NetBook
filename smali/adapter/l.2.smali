.class public final Lcom/ushaqi/zhuishushenqi/adapter/l;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;",
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
    .line 33
    const v0, 0x7f0300ff

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/l;->b:Z

    .line 34
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/l;->a:Z

    .line 36
    const-string v1, "community_user_gender_icon_toggle"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/l;->b:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 27
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;

    .line 1054
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 1055
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/l;->a:Z

    if-eqz v0, :cond_0

    .line 1056
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1060
    :goto_0
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1061
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/m;

    invoke-direct {v2, p0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/m;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/l;Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lv."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1069
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1070
    const/4 v0, 0x5

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1071
    const-string v2, "vote"

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getVoteCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    const v2, 0x7f0201d3

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1078
    :goto_1
    const/4 v0, 0x6

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1079
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget v2, p2, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->likeCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getState()Ljava/lang/String;

    move-result-object v2

    .line 1083
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    .line 1084
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1085
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 1086
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->a(Ljava/lang/String;)Z

    .line 1087
    invoke-virtual {p0, v5, v6}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(IZ)Landroid/view/View;

    .line 1095
    :goto_2
    const/4 v0, 0x7

    const-class v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1096
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/l;->b:Z

    if-eqz v2, :cond_5

    .line 1097
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1099
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1100
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1117
    :goto_3
    return-void

    .line 1058
    :cond_0
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02006e

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1075
    :cond_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getCommentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    const v2, 0x7f02018e

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 1089
    :cond_2
    invoke-virtual {v0, v7}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 1090
    invoke-virtual {p0, v5, v4}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(IZ)Landroid/view/View;

    .line 1091
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    goto :goto_2

    .line 1101
    :cond_3
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1102
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1103
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 1105
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1106
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 1110
    :cond_5
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1112
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1113
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 1115
    :cond_6
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1116
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1117
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 1119
    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c0023
        0x7f0c02fe
        0x7f0c02ff
        0x7f0c0047
        0x7f0c0048
        0x7f0c028f
        0x7f0c035f
        0x7f0c02fd
        0x7f0c0300
    .end array-data
.end method
