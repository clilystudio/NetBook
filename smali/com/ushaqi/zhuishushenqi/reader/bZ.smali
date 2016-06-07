.class public final Lcom/ushaqi/zhuishushenqi/reader/bZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field private l:I

.field private final m:Landroid/app/Activity;

.field private final n:Landroid/content/res/Resources;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ce;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cc;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ca;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cd;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cb;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/content/SharedPreferences;

.field private u:I

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xxl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3xl"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->o:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->p:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->q:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->r:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->s:Ljava/util/List;

    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    .line 1112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    .line 1113
    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v3, "text_spec"

    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    .line 1114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "is_use_system_brightness"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->v:Z

    .line 1115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->w:I

    .line 1116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "night_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    .line 1117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "convert_t"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->y:Z

    .line 1118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "reader_background_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->z:I

    .line 1127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->b(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1128
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c:I

    .line 1129
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->d:I

    .line 1130
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f:I

    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->l:I

    .line 1133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    const-string v1, "reader_opt_full_screen"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1134
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Z)V

    .line 1136
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k()V

    .line 1137
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->z:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c(I)V

    .line 106
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 411
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "night_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    .line 154
    const v0, 0x7f0b00b1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    .line 155
    const v0, 0x7f020240

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j:I

    .line 179
    :goto_0
    const/16 v0, 0x99

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i:I

    .line 180
    return-void

    .line 159
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    .line 162
    const v0, 0x7f0b00a6

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    .line 163
    const v0, 0x7f020241

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j:I

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    .line 167
    const v0, 0x7f02023d

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    .line 168
    const v0, 0x7f02023e

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j:I

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    .line 172
    const v0, 0x7f0b00a7

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    .line 173
    const v0, 0x7f02023f

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j:I

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private k()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1233
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    packed-switch v2, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    .line 142
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    .line 143
    return-void

    .line 1235
    :pswitch_1
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    .line 1239
    :pswitch_2
    const v0, 0x3f933333    # 1.15f

    goto :goto_0

    .line 1241
    :pswitch_3
    const v0, 0x3fa66666    # 1.3f

    goto :goto_0

    .line 1243
    :pswitch_4
    const v0, 0x3fcccccd    # 1.6f

    goto :goto_0

    .line 1245
    :pswitch_5
    const v0, 0x3ff33333    # 1.9f

    goto :goto_0

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private l()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cc;

    .line 295
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cc;->a()V

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ca;

    .line 301
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/ca;->a()V

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 325
    const-string v2, "text_spec"

    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    const-string v1, "brightness"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->w:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    const-string v1, "is_use_system_brightness"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->v:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    const-string v1, "customer_night_theme"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    const-string v1, "night_mode"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 374
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    const-string v1, "start_night_theme_page"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->B(Landroid/content/Context;)V

    .line 381
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    const-string v1, "broadcastOnThemeChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->C(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    .line 187
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c(I)V

    .line 1306
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ce;

    .line 1307
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/ce;->a()V

    goto :goto_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->p()V

    .line 191
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/C;

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/C;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 199
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    .line 201
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c(I)V

    .line 1312
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cd;

    .line 1313
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cd;->a()V

    goto :goto_0

    .line 203
    :cond_0
    if-eqz v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->p()V

    .line 1398
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1399
    const-string v1, "reader_background_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ca;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cb;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cd;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ce;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "key_enable_imersive_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    .line 3091
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3092
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3093
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3094
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 3095
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n:Landroid/content/res/Resources;

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->d:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->l:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 225
    if-eqz p1, :cond_1

    .line 226
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    .line 230
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->L(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->y:Z

    .line 2318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cb;

    .line 2319
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cb;->a()V

    goto :goto_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2387
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2388
    const-string v1, "convert_t"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->y:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 334
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->w:I

    .line 335
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m()V

    .line 336
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->o()V

    .line 337
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->v:Z

    .line 345
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->m()V

    .line 346
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->o()V

    .line 347
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 277
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    .line 278
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k()V

    .line 279
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->l()V

    .line 280
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n()V

    .line 282
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    if-lez v0, :cond_0

    .line 286
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->u:I

    .line 287
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k()V

    .line 288
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->l()V

    .line 289
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->n()V

    .line 291
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->w:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->v:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->x:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->y:Z

    return v0
.end method

.method public final j()I
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->t:Landroid/content/SharedPreferences;

    const-string v1, "reader_background_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->z:I

    return v0
.end method
