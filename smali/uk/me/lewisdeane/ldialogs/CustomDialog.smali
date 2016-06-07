.class public final Luk/me/lewisdeane/ldialogs/CustomDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:[Landroid/view/View;

.field private e:[Landroid/widget/LinearLayout;

.field private f:[Ljava/lang/String;

.field private g:Landroid/graphics/Typeface;

.field private h:Luk/me/lewisdeane/ldialogs/c;

.field private i:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Luk/me/lewisdeane/ldialogs/h;)V
    .locals 9

    .prologue
    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    .line 23
    new-array v0, v7, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->e:[Landroid/widget/LinearLayout;

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, ""

    aput-object v1, v0, v8

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->f:[Ljava/lang/String;

    .line 30
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->i:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    .line 66
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Luk/me/lewisdeane/ldialogs/h;->c()Z

    move-result v0

    .line 69
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/f;->j(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->k:Z

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-gt v1, v3, :cond_0

    move v0, v2

    .line 1087
    :cond_0
    if-eqz v0, :cond_4

    sget v0, Luk/me/lewisdeane/ldialogs/R$layout;->dialog_custom_highlight:I

    .line 1088
    :goto_0
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    .line 1090
    :try_start_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->h:Luk/me/lewisdeane/ldialogs/c;

    if-nez v0, :cond_1

    .line 1091
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    check-cast v0, Luk/me/lewisdeane/ldialogs/c;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->h:Luk/me/lewisdeane/ldialogs/c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :cond_1
    :goto_1
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v3, Luk/me/lewisdeane/ldialogs/R$id;->dialog_custom_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1098
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v3, Luk/me/lewisdeane/ldialogs/R$id;->dialog_custom_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1099
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    const v3, 0x1020019

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1100
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v8

    .line 1102
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->e:[Landroid/widget/LinearLayout;

    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v3, Luk/me/lewisdeane/ldialogs/R$id;->dialog_custom_alongside_buttons:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 1103
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->e:[Landroid/widget/LinearLayout;

    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v3, Luk/me/lewisdeane/ldialogs/R$id;->dialog_custom_stacked_buttons:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v6

    .line 1105
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->b()V

    .line 1107
    invoke-virtual {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->g:Landroid/graphics/Typeface;

    .line 1109
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a()V

    .line 1112
    iget-boolean v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->k:Z

    if-nez v0, :cond_5

    .line 1113
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v1, Luk/me/lewisdeane/ldialogs/R$color;->light_window_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1114
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->light_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1117
    :cond_2
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v6

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1118
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v6

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->light_text_secondary:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1129
    :cond_3
    :goto_2
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-super/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 77
    iget-boolean v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->k:Z

    .line 1256
    if-eqz v0, :cond_7

    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->DARK:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    :goto_3
    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->i:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    .line 1257
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->c()V

    .line 78
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2234
    new-array v1, v6, [Landroid/view/View;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-direct {p0, v1, v3}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a([Landroid/view/View;[Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 2239
    new-array v1, v6, [Landroid/view/View;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v3, v3, v6

    aput-object v3, v1, v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-direct {p0, v1, v3}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a([Landroid/view/View;[Ljava/lang/String;)V

    .line 80
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->f:Ljava/lang/String;

    .line 2244
    new-array v1, v6, [Landroid/view/View;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v3, v3, v7

    aput-object v3, v1, v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-direct {p0, v1, v3}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a([Landroid/view/View;[Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->b()V

    .line 81
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->g:Ljava/lang/String;

    .line 2250
    new-array v1, v6, [Landroid/view/View;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v3, v3, v8

    aput-object v3, v1, v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-direct {p0, v1, v3}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a([Landroid/view/View;[Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->b()V

    .line 82
    iget-object v0, p1, Luk/me/lewisdeane/ldialogs/h;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog;

    .line 83
    invoke-virtual {p1}, Luk/me/lewisdeane/ldialogs/h;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->setCancelable(Z)V

    .line 84
    return-void

    .line 1087
    :cond_4
    sget v0, Luk/me/lewisdeane/ldialogs/R$layout;->dialog_custom:I

    goto/16 :goto_0

    .line 1094
    :catch_0
    move-exception v0

    const-string v0, "L Dialogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should implement ClickListener or use CustomDialog.setClickListener(...)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1121
    :cond_5
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    sget v1, Luk/me/lewisdeane/ldialogs/R$color;->dark_window_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1122
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1123
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->dark_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1125
    :cond_6
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v6

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1126
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v6

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->dark_text_secondary:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1256
    :cond_7
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->i:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    if-ne v0, v1, :cond_0

    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    # getter for: Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->mColour:Ljava/lang/String;
    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->access$100(Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->j:Ljava/lang/String;

    .line 191
    :try_start_0
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    return-object p0

    .line 189
    :cond_0
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    # getter for: Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->mColour:Ljava/lang/String;
    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->access$200(Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Luk/me/lewisdeane/ldialogs/CustomDialog;)Luk/me/lewisdeane/ldialogs/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->h:Luk/me/lewisdeane/ldialogs/c;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Luk/me/lewisdeane/ldialogs/a;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/a;-><init>(Luk/me/lewisdeane/ldialogs/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    new-instance v1, Luk/me/lewisdeane/ldialogs/b;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/b;-><init>(Luk/me/lewisdeane/ldialogs/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private a([Landroid/view/View;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 199
    move v1, v2

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 200
    aget-object v3, p1, v1

    move v0, v2

    .line 3219
    :goto_1
    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 3220
    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v4, v4, v0

    if-ne v4, v3, :cond_1

    move v3, v0

    .line 201
    :goto_2
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->f:[Ljava/lang/String;

    aget-object v4, p2, v1

    aput-object v4, v0, v3

    .line 202
    aget-object v0, p2, v1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    div-int/lit8 v0, v3, 0x2

    if-lez v0, :cond_3

    .line 206
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    .line 207
    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->f:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 3223
    goto :goto_2

    .line 210
    :cond_3
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/TextView;

    .line 211
    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->f:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 215
    :cond_4
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->c()V

    .line 216
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 158
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->e:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->e:[Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3164
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3165
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->b:Landroid/view/View;

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3166
    iget-boolean v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->k:Z

    if-nez v0, :cond_1

    .line 3167
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3168
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Luk/me/lewisdeane/ldialogs/R$color;->light_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3169
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/Button;

    sget v1, Luk/me/lewisdeane/ldialogs/R$drawable;->light_bg_confirm_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3170
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    sget v1, Luk/me/lewisdeane/ldialogs/R$drawable;->light_bg_confirm_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3179
    :cond_0
    :goto_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->f:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a([Landroid/view/View;[Ljava/lang/String;)V

    .line 3180
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a()V

    .line 3181
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog;

    .line 161
    return-void

    .line 3173
    :cond_1
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3174
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Luk/me/lewisdeane/ldialogs/R$color;->dark_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3175
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/Button;

    sget v1, Luk/me/lewisdeane/ldialogs/R$drawable;->dark_bg_confirm_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3176
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    sget v1, Luk/me/lewisdeane/ldialogs/R$drawable;->dark_bg_confirm_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->i:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    sget-object v2, Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;->LIGHT:Luk/me/lewisdeane/ldialogs/CustomDialog$Theme;

    if-ne v1, v2, :cond_0

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    # getter for: Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->mColour:Ljava/lang/String;
    invoke-static {v1}, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->access$100(Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    return-void

    .line 229
    :cond_0
    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    # getter for: Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->mColour:Ljava/lang/String;
    invoke-static {v1}, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->access$200(Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/CustomDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_0
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->c:Landroid/view/View;

    .line 272
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->c:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 273
    return-object p0
.end method

.method public final a(Luk/me/lewisdeane/ldialogs/c;)Luk/me/lewisdeane/ldialogs/CustomDialog;
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/CustomDialog;->h:Luk/me/lewisdeane/ldialogs/c;

    .line 263
    return-object p0
.end method
