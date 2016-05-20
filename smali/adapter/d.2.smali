.class public final Lcom/ushaqi/zhuishushenqi/adapter/d;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;",
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
    .line 32
    const v0, 0x7f0300ff

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/d;->b:Z

    .line 33
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/d;->a:Z

    .line 35
    const-string v1, "community_user_gender_icon_toggle"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/d;->b:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 26
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;

    .line 1052
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 1053
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1054
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/d;->a:Z

    if-eqz v2, :cond_0

    .line 1055
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 1067
    :goto_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1068
    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lv."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1069
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1070
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1071
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;->getCommentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1073
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/d;->b:Z

    if-eqz v0, :cond_3

    .line 1074
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 1075
    const-string v1, "male"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1076
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1101
    :goto_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;->getState()Ljava/lang/String;

    move-result-object v1

    .line 1102
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    .line 1103
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1104
    invoke-virtual {p0, v7, v6}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    .line 1105
    invoke-virtual {p0, v8, v5}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    :goto_2
    return-void

    .line 1057
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02006e

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1058
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/e;

    invoke-direct {v2, p0, v0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/e;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/d;Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1078
    :cond_1
    const-string v1, "female"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1082
    :cond_2
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1087
    :cond_3
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string v1, "official"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1089
    invoke-virtual {p0, v4, v5}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    .line 1090
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1091
    :cond_4
    const-string v1, "doyen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1092
    invoke-virtual {p0, v4, v5}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    .line 1093
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_1

    .line 1095
    :cond_5
    invoke-virtual {p0, v4, v6}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    goto/16 :goto_1

    .line 1107
    :cond_6
    invoke-virtual {p0, v7, v5}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    .line 1108
    invoke-virtual {p0, v8, v6}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(IZ)Landroid/view/View;

    goto/16 :goto_2
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x8

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
        0x7f0c02fd
        0x7f0c0300
    .end array-data
.end method
