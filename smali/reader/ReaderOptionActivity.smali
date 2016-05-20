.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:[Ljava/lang/String;

.field private e:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 37
    .line 3202
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 3204
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 3205
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030159

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3207
    const v4, 0x7f050146

    invoke-virtual {v0, v4}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 3208
    invoke-virtual {v0, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v0, v4, v5}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v4

    .line 3209
    const v0, 0x7f0c0458

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 3210
    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a:I

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 3212
    :goto_0
    if-ge v1, v6, :cond_0

    .line 3214
    aget v0, v2, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 3215
    new-instance v5, Lcom/ushaqi/zhuishushenqi/reader/bP;

    invoke-direct {v5, p0, v4, v1}, Lcom/ushaqi/zhuishushenqi/reader/bP;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3227
    :cond_0
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 37
    return-void

    .line 3204
    nop

    :array_0
    .array-data 4
        0x7f0c0459
        0x7f0c045a
        0x7f0c045b
        0x7f0c045c
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 37
    .line 3140
    if-eqz p2, :cond_0

    .line 3141
    const-string v0, "\u5df2\u5f00\u542f"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 3143
    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a:I

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->e:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030146

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f05015d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->b(I)V

    .line 1170
    const-string v0, "reader_orientation"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1171
    if-eqz v0, :cond_1

    .line 1172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->setRequestedOrientation(I)V

    .line 57
    :goto_0
    const v0, 0x7f0c0408

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 58
    const v1, 0x7f0c040a

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 59
    const v2, 0x7f0c040b

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    .line 60
    const v3, 0x7f0c040f

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SwitchCompat;

    .line 61
    const v4, 0x7f0c0412

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/SwitchCompat;

    .line 63
    const v5, 0x7f0c0410

    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 64
    const v5, 0x7f0c0411

    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->b:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a000b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->c:[Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->e:[I

    .line 70
    const-string v5, "volume_keys_flip"

    invoke-static {p0, v5}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 71
    const-string v8, "click_flip_animation"

    invoke-static {p0, v8, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    .line 72
    const-string v9, "reader_opt_full_screen"

    invoke-static {p0, v9}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 73
    const-string v10, "convert_t"

    invoke-static {p0, v10, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    .line 74
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "auto_buy_chapter"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    .line 75
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 76
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 77
    invoke-virtual {v2, v9}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 78
    invoke-virtual {v3, v10}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 79
    invoke-virtual {v4, v11}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 83
    const-string v5, "reader_screen_off_time"

    const v8, 0x1d4c0

    invoke-static {p0, v5, v8}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    move v5, v6

    .line 84
    :goto_1
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->c:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_0

    .line 85
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->e:[I

    aget v9, v9, v5

    if-ne v8, v9, :cond_2

    .line 86
    iput v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a:I

    .line 87
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->b:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->c:[Ljava/lang/String;

    aget-object v5, v9, v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    new-instance v5, Lcom/ushaqi/zhuishushenqi/reader/bI;

    invoke-direct {v5, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bI;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bJ;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bJ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bK;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/bK;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bL;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bL;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bM;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bM;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bN;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bN;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2152
    const v0, 0x7f0c040d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;

    .line 2153
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2154
    invoke-virtual {v0, v13}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->setVisibility(I)V

    .line 2155
    const v0, 0x7f0c040c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 1174
    :cond_1
    invoke-virtual {p0, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 84
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2157
    :cond_3
    const-string v1, "key_enable_imersive_mode"

    invoke-static {p0, v1, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2158
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->setChecked(Z)V

    .line 2159
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bO;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/bO;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->setCheckListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2
.end method
