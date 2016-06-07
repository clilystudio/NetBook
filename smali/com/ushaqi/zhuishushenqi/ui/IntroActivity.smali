.class public Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final f:[I


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/bc;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Landroid/widget/ImageView;

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200a3
        0x7f0200a4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->i:Z

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    sget-object v3, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->f:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/bc;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 83
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->b()V

    .line 84
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const v0, 0x7f0201a7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    const v0, 0x7f0201a6

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 87
    const v0, 0x7f0c046d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    new-array v1, v5, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    move v2, v3

    .line 91
    :goto_0
    if-ge v2, v5, :cond_0

    .line 92
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v4, v2

    .line 93
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    invoke-static {v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Landroid/widget/ImageView;Z)V

    .line 94
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 97
    :cond_0
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Landroid/widget/ImageView;Z)V

    .line 99
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->finish()V

    .line 155
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 2158
    :pswitch_0
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    const-string v0, "intro_quick_login"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c()V

    .line 132
    const-string v0, "intro_entry_app"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f0c0471
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030166

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->setContentView(I)V

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->e:Ljava/util/ArrayList;

    .line 1058
    const v0, 0x7f0c046c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 1059
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bc;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/bc;-><init>(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/bc;

    .line 1061
    const v0, 0x7f0c0471

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c:Landroid/widget/Button;

    .line 1062
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    const v0, 0x7f0c0472

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->d:Landroid/widget/Button;

    .line 1064
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a()V

    .line 53
    const-string v0, "intro_show_count"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    const v3, 0x7f0b0071

    const v2, 0x7f0b0070

    const/4 v1, 0x1

    .line 115
    .line 1162
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    if-ne v0, p1, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Landroid/widget/ImageView;Z)V

    .line 1166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->g:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Landroid/widget/ImageView;Z)V

    .line 1168
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    .line 1174
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->h:I

    if-nez v0, :cond_2

    .line 1175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->i:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->c()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->i:Z

    .line 141
    return-void
.end method
