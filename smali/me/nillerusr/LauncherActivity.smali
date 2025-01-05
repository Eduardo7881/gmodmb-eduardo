.class public Lme/nillerusr/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field public static MOD_NAME:Ljava/lang/String;

.field public static PKG_NAME:Ljava/lang/String;

.field public static can_write:Z

.field static cmdArgs:Landroid/widget/EditText;

.field public static mPref:Landroid/content/SharedPreferences;

.field static res_layout:Landroid/widget/LinearLayout;

.field public static final sdk:I


# instance fields
.field public spin:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "cstrike"

    sput-object v0, Lme/nillerusr/LauncherActivity;->MOD_NAME:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lme/nillerusr/LauncherActivity;->can_write:Z

    .line 43
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lme/nillerusr/LauncherActivity;->sdk:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static changeButtonsStyle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    sget v5, Lme/nillerusr/LauncherActivity;->sdk:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 89
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_3

    .line 53
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 62
    .restart local v3    # "child":Landroid/view/View;
    :cond_3
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 64
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "child":Landroid/view/View;
    invoke-static {v3}, Lme/nillerusr/LauncherActivity;->changeButtonsStyle(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 85
    :catch_0
    move-exception v5

    goto :goto_1

    .line 67
    .restart local v3    # "child":Landroid/view/View;
    :cond_4
    instance-of v5, v3, Landroid/widget/Button;

    if-eqz v5, :cond_6

    .line 69
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 70
    .local v1, "b":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 71
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    const/16 v5, 0x60

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    :cond_5
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 73
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 75
    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 77
    .end local v1    # "b":Landroid/widget/Button;
    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v5, v3, Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 79
    move-object v0, v3

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 80
    .local v1, "b":Landroid/widget/EditText;
    const v5, -0xd8d8d9

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 81
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 82
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private prepareIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 174
    sget-object v1, Lme/nillerusr/LauncherActivity;->cmdArgs:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "argv":Ljava/lang/String;
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    sget-object v1, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/nillerusr/LauncherActivity;->saveSettings(Landroid/content/SharedPreferences$Editor;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "argv"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_0
    sget-object v1, Lme/nillerusr/LauncherActivity;->MOD_NAME:Ljava/lang/String;

    const-string v2, "episodic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 184
    const-string v1, "gamedir"

    const-string v2, "episodic"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :goto_0
    const-string v1, "gamelibdir"

    invoke-virtual {p0}, Lme/nillerusr/LauncherActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "vpk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/nillerusr/LauncherActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extras_dir.vpk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    return-object p1

    .line 186
    :cond_1
    const-string v1, "gamedir"

    const-string v2, "ep2"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 189
    :cond_2
    const-string v1, "gamedir"

    sget-object v2, Lme/nillerusr/LauncherActivity;->MOD_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x15

    const/4 v8, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lme/nillerusr/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lme/nillerusr/LauncherActivity;->PKG_NAME:Ljava/lang/String;

    .line 95
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->requestWindowFeature(I)Z

    .line 97
    sget v5, Lme/nillerusr/LauncherActivity;->sdk:I

    if-lt v5, v7, :cond_1

    .line 98
    const v5, 0x1030224

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 102
    :goto_0
    const-string v5, "mod"

    invoke-virtual {p0, v5, v8}, Lme/nillerusr/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    .line 104
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->setContentView(I)V

    .line 106
    const v5, 0x7f060005

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 108
    .local v1, "body":Landroid/widget/LinearLayout;
    const v5, 0x7f060006

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    sput-object v5, Lme/nillerusr/LauncherActivity;->cmdArgs:Landroid/widget/EditText;

    .line 110
    const v5, 0x7f060004

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 111
    .local v2, "button":Landroid/widget/Button;
    new-instance v5, Lme/nillerusr/LauncherActivity$1;

    invoke-direct {v5, p0}, Lme/nillerusr/LauncherActivity$1;-><init>(Lme/nillerusr/LauncherActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v5, 0x7f060003

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "aboutButton":Landroid/widget/Button;
    new-instance v5, Lme/nillerusr/LauncherActivity$2;

    invoke-direct {v5, p0}, Lme/nillerusr/LauncherActivity$2;-><init>(Lme/nillerusr/LauncherActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget-object v5, Lme/nillerusr/LauncherActivity;->MOD_NAME:Ljava/lang/String;

    const-string v6, "episodic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lme/nillerusr/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    .line 139
    iget-object v5, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Half-Life 2 Episode 1"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v5, "Half-Life 2 Episode 2"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget v5, Lme/nillerusr/LauncherActivity;->sdk:I

    if-lt v5, v7, :cond_2

    .line 148
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 152
    .local v4, "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    iget-object v5, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 153
    iget-object v5, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    sget-object v6, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "episode"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 156
    .end local v3    # "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    sget-object v5, Lme/nillerusr/LauncherActivity;->cmdArgs:Landroid/widget/EditText;

    sget-object v6, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "argv"

    const-string v8, "-nobackgroundlevel"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lme/nillerusr/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Lme/nillerusr/LauncherActivity;->changeButtonsStyle(Landroid/view/ViewGroup;)V

    .line 159
    return-void

    .line 100
    .end local v0    # "aboutButton":Landroid/widget/Button;
    .end local v1    # "body":Landroid/widget/LinearLayout;
    .end local v2    # "button":Landroid/widget/Button;
    :cond_1
    const v5, 0x1030005

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    goto/16 :goto_0

    .line 150
    .restart local v0    # "aboutButton":Landroid/widget/Button;
    .restart local v1    # "body":Landroid/widget/LinearLayout;
    .restart local v2    # "button":Landroid/widget/Button;
    .restart local v3    # "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f030001

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v4    # "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/nillerusr/LauncherActivity;->saveSettings(Landroid/content/SharedPreferences$Editor;)V

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    return-void
.end method

.method public saveSettings(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 163
    sget-object v1, Lme/nillerusr/LauncherActivity;->cmdArgs:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "argv":Ljava/lang/String;
    sget-object v1, Lme/nillerusr/LauncherActivity;->MOD_NAME:Ljava/lang/String;

    const-string v2, "episodic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "episode"

    iget-object v2, p0, Lme/nillerusr/LauncherActivity;->spin:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    :cond_0
    const-string v1, "argv"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public startSource(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    sget-object v3, Lme/nillerusr/LauncherActivity;->cmdArgs:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "argv":Ljava/lang/String;
    sget-object v3, Lme/nillerusr/LauncherActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 200
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "argv"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-static {p0}, Lme/nillerusr/ExtractAssets;->extractAssets(Landroid/content/Context;)V

    .line 206
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.valvesoftware.source"

    const-string v5, "org.libsdl.app.SDLActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    invoke-direct {p0, v2}, Lme/nillerusr/LauncherActivity;->prepareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 209
    invoke-virtual {p0, v2}, Lme/nillerusr/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v3

    .line 214
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Warning"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Please install Source Engine"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f040005

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
