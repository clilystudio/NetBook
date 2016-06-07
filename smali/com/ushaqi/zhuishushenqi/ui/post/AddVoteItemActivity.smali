.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[Landroid/widget/RelativeLayout;

.field private c:[Landroid/widget/ImageView;

.field private e:[Landroid/widget/TextView;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 51
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    .line 53
    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->c:[Landroid/widget/ImageView;

    .line 55
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    .line 57
    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->f:[Ljava/lang/String;

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h:Ljava/util/List;

    .line 61
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    .line 69
    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->o:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 176
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/S;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->p:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/T;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/T;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->q:Landroid/view/View$OnClickListener;

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 2

    .prologue
    .line 45
    .line 1212
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1214
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    :goto_0
    return-void

    .line 1216
    :cond_0
    const-string v0, "\u4e0d\u80fd\u518d\u6dfb\u52a0\u6295\u7968\u9879\u5566"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 45
    .line 4227
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 4309
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4311
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    .line 45
    return-void

    .line 4229
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    goto :goto_0

    .line 4234
    :pswitch_1
    if-ne v3, p1, :cond_0

    .line 4235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v6

    .line 4238
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    goto :goto_0

    .line 4242
    :pswitch_2
    if-ne v3, p1, :cond_2

    .line 4243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v6

    .line 4246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 4251
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 4247
    :cond_2
    if-ne v2, p1, :cond_1

    .line 4248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    goto :goto_1

    .line 4255
    :pswitch_3
    if-ne v3, p1, :cond_4

    .line 4256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4259
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v6

    .line 4260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 4261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    .line 4271
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    goto/16 :goto_0

    .line 4262
    :cond_4
    if-ne v2, p1, :cond_5

    .line 4263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 4266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    goto :goto_2

    .line 4267
    :cond_5
    if-ne v4, p1, :cond_3

    .line 4268
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    goto :goto_2

    .line 4275
    :pswitch_4
    if-ne v3, p1, :cond_7

    .line 4276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v6

    .line 4281
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 4282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    .line 4283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    .line 4300
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    goto/16 :goto_0

    .line 4284
    :cond_7
    if-ne v2, p1, :cond_8

    .line 4285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 4289
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    .line 4290
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    goto :goto_3

    .line 4291
    :cond_8
    if-ne v4, p1, :cond_9

    .line 4292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    .line 4295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    goto/16 :goto_3

    .line 4296
    :cond_9
    if-ne v5, p1, :cond_6

    .line 4297
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4298
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    goto/16 :goto_3

    .line 4227
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 45
    .line 4534
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4535
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/TextView;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 45
    .line 3397
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 3398
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030095

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3399
    const v2, 0x7f0c0210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3401
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3402
    const-string v3, "\u6295\u7968\u9879"

    .line 4036
    iput-object v3, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 3404
    const v3, 0x7f050138

    invoke-virtual {v0, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 3405
    const v3, 0x7f050011

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/U;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/U;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 3414
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v5

    .line 3415
    const v0, 0x1020019

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 3416
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/V;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/ui/post/V;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3436
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3437
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3440
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/W;

    invoke-direct {v0, p0, v2, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    move v1, v0

    .line 5525
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 5526
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5527
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 5525
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    .line 1498
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 1499
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1500
    const-string v2, ""

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1501
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h:Ljava/util/List;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1505
    const-string v1, "\u81f3\u5c11\u9700\u89812\u4e2a\u6295\u7968\u9879"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1513
    :goto_1
    return v0

    .line 1508
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->o:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-nez v1, :cond_4

    .line 1509
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 1510
    if-nez v1, :cond_3

    .line 1511
    const-string v1, "\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1512
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1515
    :cond_3
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->o:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 1518
    :cond_4
    const/4 v0, 0x1

    .line 45
    goto :goto_1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    .line 2464
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 2465
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300a2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2466
    const v0, 0x7f0c022e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2467
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2468
    const v3, 0x7f0501dd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2472
    :goto_0
    const-string v0, "\u53d1\u5e03"

    .line 3036
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2473
    const v0, 0x7f0501d7

    invoke-virtual {v1, v0, v5}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2474
    const v0, 0x7f050011

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/X;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/X;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    invoke-virtual {v1, v0, v3}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2481
    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2482
    const v0, 0x1020019

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2483
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/Y;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/Y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 2470
    :cond_0
    const v3, 0x7f0501dc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    return v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 3

    .prologue
    .line 45
    .line 4381
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->k:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->n:Z

    invoke-static {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 4382
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 3

    .prologue
    .line 45
    .line 4386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4387
    const-string v1, "book_post_list_bookId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4388
    const-string v1, "book_post_list_bookTitle"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4389
    const-string v1, "book_post_list_from_reader"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4390
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->o:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 541
    const-string v1, "contentArray"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 543
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->finish()V

    .line 544
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->a()Lcom/ushaqi/zhuishushenqi/a;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/a;->a(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "block"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v2, "ramble"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lastContentArray"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->f:[Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "book_post_list_bookId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->j:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "book_post_list_bookTitle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->k:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "add_vote_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->l:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "add_vote_desc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->m:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "book_post_list_from_reader"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->n:Z

    .line 94
    const-string v0, "\u7f16\u8f91\u6295\u7968\u9879"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b(Ljava/lang/String;)V

    .line 1101
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1106
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 1111
    new-array v5, v9, [I

    fill-array-data v5, :array_2

    move v2, v1

    .line 1115
    :goto_1
    if-ge v2, v8, :cond_3

    .line 1117
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    aget v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v6, v2

    .line 1118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v2

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget v0, v4, v2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v6, v2

    .line 1115
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 81
    :cond_1
    const-string v2, "android-feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    goto/16 :goto_0

    .line 83
    :cond_2
    const-string v2, "girl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->a:I

    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 1124
    :goto_2
    if-ge v2, v9, :cond_4

    .line 1125
    add-int/lit8 v3, v2, 0x3

    .line 1126
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->c:[Landroid/widget/ImageView;

    aget v0, v5, v2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v4, v2

    .line 1127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1131
    :cond_4
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1132
    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1133
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/Q;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/R;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/R;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->f:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    .line 1152
    const/4 v0, 0x6

    :goto_3
    if-lez v0, :cond_5

    .line 1153
    const-string v2, ""

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1154
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    .line 1159
    :cond_5
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    if-ge v0, v7, :cond_6

    .line 1160
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    .line 1162
    :cond_6
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    move v0, v1

    .line 1201
    :goto_4
    if-ge v0, v2, :cond_9

    .line 1202
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1203
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 1204
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1152
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1166
    :cond_8
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i:I

    move v0, v1

    .line 1167
    :goto_5
    if-ge v0, v8, :cond_9

    .line 1168
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1162
    :cond_9
    return-void

    .line 1101
    :array_0
    .array-data 4
        0x7f0c001a
        0x7f0c001b
        0x7f0c001c
        0x7f0c001d
        0x7f0c001e
        0x7f0c001f
        0x7f0c0020
    .end array-data

    .line 1106
    :array_1
    .array-data 4
        0x7f0c000c
        0x7f0c000d
        0x7f0c000e
        0x7f0c000f
        0x7f0c0010
        0x7f0c0011
        0x7f0c0012
    .end array-data

    .line 1111
    :array_2
    .array-data 4
        0x7f0c0007
        0x7f0c0008
        0x7f0c0009
        0x7f0c000a
        0x7f0c000b
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 553
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 550
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->onBackPressed()V

    .line 551
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
